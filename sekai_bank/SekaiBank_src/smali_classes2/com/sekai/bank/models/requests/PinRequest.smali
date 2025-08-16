.class public Lcom/sekai/bank/models/requests/PinRequest;
.super Ljava/lang/Object;
.source "PinRequest.java"


# instance fields
.field private newPin:Ljava/lang/String;

.field private pin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/sekai/bank/models/requests/PinRequest;->pin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sekai/bank/models/requests/PinRequest;->pin:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/sekai/bank/models/requests/PinRequest;->newPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNewPin()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/sekai/bank/models/requests/PinRequest;->newPin:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sekai/bank/models/requests/PinRequest;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public setNewPin(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/sekai/bank/models/requests/PinRequest;->newPin:Ljava/lang/String;

    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sekai/bank/models/requests/PinRequest;->pin:Ljava/lang/String;

    return-void
.end method
