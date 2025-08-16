.class public Lcom/sekai/bank/utils/delayed_transaction/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 14
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 18
    :cond_0
    const-string p2, "Device boot completed - checking for delayed transactions"

    const-string v0, "BootReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p2, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-direct {p2, p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p2}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->getScheduledTransactionCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 24
    invoke-virtual {p2}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->startPeriodicChecking()V

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Restarted periodic checking for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " scheduled transactions"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    :cond_1
    const-string p1, "No scheduled transactions found after boot"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
