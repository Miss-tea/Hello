.class public Lcom/sekai/bank/models/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private balance:D

.field private createdAt:Ljava/util/Date;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private updatedAt:Ljava/util/Date;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sekai/bank/models/User;->username:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/sekai/bank/models/User;->email:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 20
    iput-wide p1, p0, Lcom/sekai/bank/models/User;->balance:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    check-cast p1, Lcom/sekai/bank/models/User;

    .line 44
    iget-object v0, p0, Lcom/sekai/bank/models/User;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/sekai/bank/models/User;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBalance()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/sekai/bank/models/User;->balance:D

    return-wide v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sekai/bank/models/User;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sekai/bank/models/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sekai/bank/models/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sekai/bank/models/User;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sekai/bank/models/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sekai/bank/models/User;->id:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBalance(D)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/sekai/bank/models/User;->balance:D

    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sekai/bank/models/User;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/sekai/bank/models/User;->email:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sekai/bank/models/User;->id:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/util/Date;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sekai/bank/models/User;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sekai/bank/models/User;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sekai/bank/models/User;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/models/User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', email=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/models/User;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sekai/bank/models/User;->balance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
