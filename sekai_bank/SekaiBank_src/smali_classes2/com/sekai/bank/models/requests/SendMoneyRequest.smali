.class public Lcom/sekai/bank/models/requests/SendMoneyRequest;
.super Ljava/lang/Object;
.source "SendMoneyRequest.java"


# instance fields
.field private amount:D

.field private message:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private toUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->toUsername:Ljava/lang/String;

    .line 11
    iput-wide p2, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->amount:D

    .line 12
    iput-object p4, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->message:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->pin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->amount:D

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getToUsername()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->toUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->amount:D

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->message:Ljava/lang/String;

    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->pin:Ljava/lang/String;

    return-void
.end method

.method public setToUsername(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/sekai/bank/models/requests/SendMoneyRequest;->toUsername:Ljava/lang/String;

    return-void
.end method
