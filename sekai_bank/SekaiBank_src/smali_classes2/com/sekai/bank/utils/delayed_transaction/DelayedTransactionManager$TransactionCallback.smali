.class Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;
.super Ljava/lang/Object;
.source "DelayedTransactionManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sekai/bank/models/responses/ApiResponse<",
        "Lcom/sekai/bank/models/Transaction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

.field private final transaction:Lcom/sekai/bank/models/DelayedTransaction;


# direct methods
.method public constructor <init>(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;Lcom/sekai/bank/models/DelayedTransaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    return-void
.end method

.method private getErrorMessage(Lretrofit2/Response;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {v0}, Lcom/sekai/bank/models/responses/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to process transaction | Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Network error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network error processing transaction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    invoke-virtual {v1}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelayedTransactionManager"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    iget-object p2, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-static {p2}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->-$$Nest$fgetstorage(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;)Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    move-result-object p2

    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    invoke-virtual {v0}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->deleteTransaction(Ljava/lang/String;)Z

    .line 254
    iget-object p2, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->-$$Nest$msendTransactionCompletedBroadcast(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;Lcom/sekai/bank/models/DelayedTransaction;ZLjava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-static {p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->-$$Nest$mcheckAndStopPeriodicCheckingIfNoTransactions(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;)V"
        }
    .end annotation

    .line 235
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    const-string v0, "DelayedTransactionManager"

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Transaction completed successfully: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    invoke-virtual {p2}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-static {p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->-$$Nest$fgetstorage(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;)Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    move-result-object p1

    iget-object p2, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    invoke-virtual {p2}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->deleteTransaction(Ljava/lang/String;)Z

    .line 238
    iget-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    iget-object p2, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->-$$Nest$msendTransactionCompletedBroadcast(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;Lcom/sekai/bank/models/DelayedTransaction;ZLjava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0, p2}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->getErrorMessage(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Transaction failed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    invoke-virtual {v1}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p2, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-static {p2}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->-$$Nest$fgetstorage(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;)Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;

    move-result-object p2

    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    invoke-virtual {v0}, Lcom/sekai/bank/models/DelayedTransaction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionFileStorage;->deleteTransaction(Ljava/lang/String;)Z

    .line 243
    iget-object p2, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    iget-object v0, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->transaction:Lcom/sekai/bank/models/DelayedTransaction;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->-$$Nest$msendTransactionCompletedBroadcast(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;Lcom/sekai/bank/models/DelayedTransaction;ZLjava/lang/String;)V

    .line 245
    :goto_0
    iget-object p1, p0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager$TransactionCallback;->this$0:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-static {p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->-$$Nest$mcheckAndStopPeriodicCheckingIfNoTransactions(Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;)V

    return-void
.end method
