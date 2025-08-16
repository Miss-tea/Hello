.class public Lcom/sekai/bank/models/responses/BalanceResponse;
.super Ljava/lang/Object;
.source "BalanceResponse.java"


# instance fields
.field private balance:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/sekai/bank/models/responses/BalanceResponse;->balance:D

    return-void
.end method


# virtual methods
.method public getBalance()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/sekai/bank/models/responses/BalanceResponse;->balance:D

    return-wide v0
.end method

.method public setBalance(D)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/sekai/bank/models/responses/BalanceResponse;->balance:D

    return-void
.end method
