.class public Lcom/sekai/bank/models/requests/RegisterRequest;
.super Ljava/lang/Object;
.source "RegisterRequest.java"


# instance fields
.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->username:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->password:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->email:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->email:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->password:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/sekai/bank/models/requests/RegisterRequest;->username:Ljava/lang/String;

    return-void
.end method
