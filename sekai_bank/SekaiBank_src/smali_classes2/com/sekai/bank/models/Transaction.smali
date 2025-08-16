.class public Lcom/sekai/bank/models/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/models/Transaction$TransactionStatus;,
        Lcom/sekai/bank/models/Transaction$TransactionType;
    }
.end annotation


# instance fields
.field private amount:D

.field private fromUserId:Ljava/lang/String;

.field private fromUsername:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private status:Lcom/sekai/bank/models/Transaction$TransactionStatus;

.field private timestamp:Ljava/util/Date;

.field private toUserId:Ljava/lang/String;

.field private toUsername:Ljava/lang/String;

.field private type:Lcom/sekai/bank/models/Transaction$TransactionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->fromUserId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sekai/bank/models/Transaction;->toUserId:Ljava/lang/String;

    .line 33
    iput-wide p3, p0, Lcom/sekai/bank/models/Transaction;->amount:D

    .line 34
    iput-object p5, p0, Lcom/sekai/bank/models/Transaction;->message:Ljava/lang/String;

    .line 35
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->timestamp:Ljava/util/Date;

    .line 36
    sget-object p1, Lcom/sekai/bank/models/Transaction$TransactionStatus;->PENDING:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->status:Lcom/sekai/bank/models/Transaction$TransactionStatus;

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

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    check-cast p1, Lcom/sekai/bank/models/Transaction;

    .line 89
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/sekai/bank/models/Transaction;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAmount()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/sekai/bank/models/Transaction;->amount:D

    return-wide v0
.end method

.method public getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/sekai/bank/models/Transaction;->isSent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sekai/bank/models/Transaction;->toUsername:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sekai/bank/models/Transaction;->fromUsername:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getFromUserId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->fromUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUsername()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->fromUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/sekai/bank/models/Transaction$TransactionStatus;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->status:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getToUserId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->toUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getToUsername()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->toUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sekai/bank/models/Transaction$TransactionType;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->type:Lcom/sekai/bank/models/Transaction$TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->id:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->status:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    sget-object v1, Lcom/sekai/bank/models/Transaction$TransactionStatus;->COMPLETED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->status:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    sget-object v1, Lcom/sekai/bank/models/Transaction$TransactionStatus;->FAILED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPending()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->status:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    sget-object v1, Lcom/sekai/bank/models/Transaction$TransactionStatus;->PENDING:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSent(Ljava/lang/String;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sekai/bank/models/Transaction;->fromUserId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setAmount(D)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/sekai/bank/models/Transaction;->amount:D

    return-void
.end method

.method public setFromUserId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->fromUserId:Ljava/lang/String;

    return-void
.end method

.method public setFromUsername(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->fromUsername:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->id:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/sekai/bank/models/Transaction$TransactionStatus;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->status:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public setToUserId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->toUserId:Ljava/lang/String;

    return-void
.end method

.method public setToUsername(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->toUsername:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/sekai/bank/models/Transaction$TransactionType;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sekai/bank/models/Transaction;->type:Lcom/sekai/bank/models/Transaction$TransactionType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sekai/bank/models/Transaction;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fromUsername=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/models/Transaction;->fromUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', toUsername=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/models/Transaction;->toUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sekai/bank/models/Transaction;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/models/Transaction;->type:Lcom/sekai/bank/models/Transaction$TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/models/Transaction;->status:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
