.class public Lcom/sekai/bank/models/DelayedTransaction;
.super Ljava/lang/Object;
.source "DelayedTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/models/DelayedTransaction$TransactionType;
    }
.end annotation


# instance fields
.field private amount:D

.field private createdAt:Ljava/util/Date;

.field private fromUserId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private scheduledTime:Ljava/util/Date;

.field private toUsername:Ljava/lang/String;

.field private type:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->id:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sekai/bank/models/DelayedTransaction;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->toUsername:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lcom/sekai/bank/models/DelayedTransaction;->amount:D

    .line 31
    iput-object p4, p0, Lcom/sekai/bank/models/DelayedTransaction;->message:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/sekai/bank/models/DelayedTransaction;->pin:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/sekai/bank/models/DelayedTransaction;->fromUserId:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/sekai/bank/models/DelayedTransaction;->calculateNextMaintenanceTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->scheduledTime:Ljava/util/Date;

    .line 35
    sget-object p1, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->MAINTENANCE_DELAYED:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->type:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sekai/bank/models/DelayedTransaction;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->toUsername:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lcom/sekai/bank/models/DelayedTransaction;->amount:D

    .line 42
    iput-object p4, p0, Lcom/sekai/bank/models/DelayedTransaction;->message:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/sekai/bank/models/DelayedTransaction;->pin:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/sekai/bank/models/DelayedTransaction;->fromUserId:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/sekai/bank/models/DelayedTransaction;->scheduledTime:Ljava/util/Date;

    .line 46
    sget-object p1, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->USER_SCHEDULED:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->type:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    return-void
.end method

.method private calculateNextMaintenanceTime()Ljava/util/Date;
    .locals 3

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->amount:D

    return-wide v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getFromUserId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->fromUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledTime()Ljava/util/Date;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->scheduledTime:Ljava/util/Date;

    return-object v0
.end method

.method public getToUsername()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->toUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sekai/bank/models/DelayedTransaction$TransactionType;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sekai/bank/models/DelayedTransaction;->type:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    return-object v0
.end method

.method public isReadyToProcess()Z
    .locals 2

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/sekai/bank/models/DelayedTransaction;->scheduledTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->amount:D

    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public setFromUserId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->fromUserId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->id:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->message:Ljava/lang/String;

    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->pin:Ljava/lang/String;

    return-void
.end method

.method public setScheduledTime(Ljava/util/Date;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->scheduledTime:Ljava/util/Date;

    return-void
.end method

.method public setToUsername(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->toUsername:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/sekai/bank/models/DelayedTransaction$TransactionType;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sekai/bank/models/DelayedTransaction;->type:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    return-void
.end method
