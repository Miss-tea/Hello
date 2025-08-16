.class public Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DelayedTransactionReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DelayedTransactionReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 14
    const-string p2, "DelayedTransactionReceiver"

    const-string v0, "Alarm triggered - processing delayed transactions"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {p1}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->processReadyTransactions(Landroid/content/Context;)V

    return-void
.end method
