.class public final enum Lcom/sekai/bank/models/DelayedTransaction$TransactionType;
.super Ljava/lang/Enum;
.source "DelayedTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/models/DelayedTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sekai/bank/models/DelayedTransaction$TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

.field public static final enum MAINTENANCE_DELAYED:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

.field public static final enum USER_SCHEDULED:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;


# direct methods
.method private static synthetic $values()[Lcom/sekai/bank/models/DelayedTransaction$TransactionType;
    .locals 2

    .line 17
    sget-object v0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->MAINTENANCE_DELAYED:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    sget-object v1, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->USER_SCHEDULED:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    filled-new-array {v0, v1}, [Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    const-string v1, "MAINTENANCE_DELAYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->MAINTENANCE_DELAYED:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    .line 19
    new-instance v0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    const-string v1, "USER_SCHEDULED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->USER_SCHEDULED:Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    .line 17
    invoke-static {}, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->$values()[Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    move-result-object v0

    sput-object v0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->$VALUES:[Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sekai/bank/models/DelayedTransaction$TransactionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    const-class v0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/sekai/bank/models/DelayedTransaction$TransactionType;
    .locals 1

    .line 17
    sget-object v0, Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->$VALUES:[Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    invoke-virtual {v0}, [Lcom/sekai/bank/models/DelayedTransaction$TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sekai/bank/models/DelayedTransaction$TransactionType;

    return-object v0
.end method
