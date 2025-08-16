.class public Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;
.super Ljava/lang/Object;
.source "DelayedTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;
    }
.end annotation


# static fields
.field private static final ACTION_TRANSACTION_CANCELLED:Ljava/lang/String; = "com.sekai.bank.DELAYED_TRANSACTION_CANCELLED"

.field private static final ACTION_TRANSACTION_COMPLETED:Ljava/lang/String; = "com.sekai.bank.DELAYED_TRANSACTION_COMPLETED"

.field private static final ACTION_TRANSACTION_SCHEDULED:Ljava/lang/String; = "com.sekai.bank.DELAYED_TRANSACTION_SCHEDULED"

.field private static final ALARM_REQUEST_CODE:I = 0x3e9

.field private static final CHECK_INTERVAL_MS:J = 0xea60L

.field private static final EXTRA_AMOUNT:Ljava/lang/String; = "amount"

.field private static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "error_message"

.field private static final EXTRA_SCHEDULED_TIME:Ljava/lang/String; = "scheduled_time"

.field private static final EXTRA_SUCCESS:Ljava/lang/String; = "success"

.field private static final EXTRA_TO_USERNAME:Ljava/lang/String; = "to_username"

.field private static final EXTRA_TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "DelayedTransactionManager"


# instance fields
.field private final alarmManager:Landroid/app/AlarmManager;

.field private final context:Landroid/content/Context;

.field private final storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;


# direct methods
.method static bridge synthetic -$$Nest$fgetstorage(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;)Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndStopPeriodicCheckingIfNoTransactions(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->checkAndStopPeriodicCheckingIfNoTransactions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendTransactionCompletedBroadcast(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;Lcom/sekai/bank/models/DelayedTransaction;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->sendTransactionCompletedBroadcast(Lcom/sekai/bank/models/DelayedTransaction;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-direct {v0, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    .line 46
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->alarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method private checkAndStopPeriodicCheckingIfNoTransactions()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->getTransactionCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->stopPeriodicChecking()V

    .line 191
    const-string v0, "DelayedTransactionManager"

    const-string v1, "All transactions processed - stopped periodic checking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private createPendingIntent(I)Landroid/app/PendingIntent;
    .locals 3

    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->context:Landroid/content/Context;

    const-class v2, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    iget-object v1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->context:Landroid/content/Context;

    const/high16 v2, 0x4000000

    or-int/2addr p1, v2

    const/16 v2, 0x3e9

    invoke-static {v1, v2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private ensurePeriodicCheckingIsActive()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->isPeriodicCheckingActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->startPeriodicChecking()V

    :cond_0
    return-void
.end method

.method private isPeriodicCheckingActive()Z
    .locals 1

    const/high16 v0, 0x20000000

    .line 114
    invoke-direct {p0, v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static processReadyTransactions(Landroid/content/Context;)V
    .locals 4

    .line 155
    const-string v0, "Processing ready transactions..."

    const-string v1, "DelayedTransactionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-direct {v0, p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;-><init>(Landroid/content/Context;)V

    .line 158
    iget-object p0, v0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->getReadyTransactions()Ljava/util/List;

    move-result-object p0

    .line 160
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string p0, "No ready transactions found"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->checkAndStopPeriodicCheckingIfNoTransactions()V

    return-void

    .line 166
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ready transactions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sekai/bank/models/DelayedTransaction;

    .line 169
    invoke-direct {v0, v1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->processTransaction(Lcom/sekai/bank/models/DelayedTransaction;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processTransaction(Lcom/sekai/bank/models/DelayedTransaction;)V
    .locals 8

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing transaction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelayedTransactionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/SekaiApplication;->getApiClient()Lcom/sekai/bank/network/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/network/ApiClient;->getApiService()Lcom/sekai/bank/network/ApiService;

    move-result-object v0

    .line 178
    new-instance v7, Lcom/sekai/bank/models/requests/SendMoneyRequest;

    .line 179
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getToUsername()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getAmount()D

    move-result-wide v3

    .line 181
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getPin()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sekai/bank/models/requests/SendMoneyRequest;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {v0, v7}, Lcom/sekai/bank/network/ApiService;->sendMoney(Lcom/sekai/bank/models/requests/SendMoneyRequest;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;-><init>(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;Lcom/sekai/bank/models/DelayedTransaction;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private saveAndScheduleTransaction(Lcom/sekai/bank/models/DelayedTransaction;)Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {v0, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->saveTransaction(Lcom/sekai/bank/models/DelayedTransaction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->ensurePeriodicCheckingIsActive()V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduled transaction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DelayedTransactionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->sendTransactionScheduledBroadcast(Lcom/sekai/bank/models/DelayedTransaction;)V

    :cond_0
    return v0
.end method

.method private sendTransactionCancelledBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sekai.bank.DELAYED_TRANSACTION_CANCELLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v1, "transaction_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendTransactionCompletedBroadcast(Lcom/sekai/bank/models/DelayedTransaction;ZLjava/lang/String;)V
    .locals 4

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sekai.bank.DELAYED_TRANSACTION_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "transaction_id"

    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "success"

    .line 215
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "to_username"

    .line 216
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getToUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "amount"

    .line 217
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getAmount()D

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p2

    .line 218
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getType()Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 221
    const-string p1, "error_message"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendTransactionScheduledBroadcast(Lcom/sekai/bank/models/DelayedTransaction;)V
    .locals 5

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sekai.bank.DELAYED_TRANSACTION_SCHEDULED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v1, "transaction_id"

    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "to_username"

    .line 198
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getToUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "amount"

    .line 199
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getAmount()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getScheduledTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "scheduled_time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 201
    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction;->getType()Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public cancelTransaction(Ljava/lang/String;)Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {v0, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->deleteTransaction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelled transaction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DelayedTransactionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->sendTransactionCancelledBroadcast(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->getTransactionCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->stopPeriodicChecking()V

    .line 91
    const-string p1, "No more transactions - stopped periodic checking"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public clearAllTransactions()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->deleteAllTransactions()V

    .line 103
    invoke-virtual {p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->stopPeriodicChecking()V

    .line 104
    const-string v0, "DelayedTransactionManager"

    const-string v1, "Cleared all scheduled transactions and stopped periodic checking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAllScheduledTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/DelayedTransaction;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->getAllTransactions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledTransactionCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->getTransactionCount()I

    move-result v0

    return v0
.end method

.method public getTransaction(Ljava/lang/String;)Lcom/sekai/bank/models/DelayedTransaction;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->storage:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    invoke-virtual {v0, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->getTransaction(Ljava/lang/String;)Lcom/sekai/bank/models/DelayedTransaction;

    move-result-object p1

    return-object p1
.end method

.method public scheduleMaintenanceDelayedTransaction(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 59
    new-instance v7, Lcom/sekai/bank/models/DelayedTransaction;

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sekai/bank/models/DelayedTransaction;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v7}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->saveAndScheduleTransaction(Lcom/sekai/bank/models/DelayedTransaction;)Z

    move-result p1

    return p1
.end method

.method public scheduleTransaction(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 9

    .line 51
    new-instance v8, Lcom/sekai/bank/models/DelayedTransaction;

    move-object v0, v8

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sekai/bank/models/DelayedTransaction;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    move-object v0, p0

    .line 54
    invoke-direct {p0, v8}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->saveAndScheduleTransaction(Lcom/sekai/bank/models/DelayedTransaction;)Z

    move-result v1

    return v1
.end method

.method public startPeriodicChecking()V
    .locals 8

    const/high16 v0, 0x8000000

    .line 119
    invoke-direct {p0, v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 121
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long v3, v0, v2

    .line 125
    iget-object v1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->alarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    const-wide/32 v5, 0xea60

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 132
    const-string v0, "DelayedTransactionManager"

    const-string v1, "Started periodic checking every 60 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopPeriodicChecking()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    .line 138
    invoke-direct {p0, v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 140
    const-string v0, "DelayedTransactionManager"

    const-string v1, "Stopped periodic checking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
