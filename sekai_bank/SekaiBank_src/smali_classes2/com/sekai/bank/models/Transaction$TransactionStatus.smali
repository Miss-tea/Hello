.class public final enum Lcom/sekai/bank/models/Transaction$TransactionStatus;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/models/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sekai/bank/models/Transaction$TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sekai/bank/models/Transaction$TransactionStatus;

.field public static final enum COMPLETED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

.field public static final enum FAILED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

.field public static final enum PENDING:Lcom/sekai/bank/models/Transaction$TransactionStatus;


# direct methods
.method private static synthetic $values()[Lcom/sekai/bank/models/Transaction$TransactionStatus;
    .locals 3

    .line 23
    sget-object v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;->PENDING:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    sget-object v1, Lcom/sekai/bank/models/Transaction$TransactionStatus;->COMPLETED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    sget-object v2, Lcom/sekai/bank/models/Transaction$TransactionStatus;->FAILED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    filled-new-array {v0, v1, v2}, [Lcom/sekai/bank/models/Transaction$TransactionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/models/Transaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;->PENDING:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    new-instance v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/models/Transaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;->COMPLETED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    new-instance v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/models/Transaction$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;->FAILED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    .line 23
    invoke-static {}, Lcom/sekai/bank/models/Transaction$TransactionStatus;->$values()[Lcom/sekai/bank/models/Transaction$TransactionStatus;

    move-result-object v0

    sput-object v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;->$VALUES:[Lcom/sekai/bank/models/Transaction$TransactionStatus;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sekai/bank/models/Transaction$TransactionStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    const-class v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sekai/bank/models/Transaction$TransactionStatus;

    return-object p0
.end method

.method public static values()[Lcom/sekai/bank/models/Transaction$TransactionStatus;
    .locals 1

    .line 23
    sget-object v0, Lcom/sekai/bank/models/Transaction$TransactionStatus;->$VALUES:[Lcom/sekai/bank/models/Transaction$TransactionStatus;

    invoke-virtual {v0}, [Lcom/sekai/bank/models/Transaction$TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sekai/bank/models/Transaction$TransactionStatus;

    return-object v0
.end method
