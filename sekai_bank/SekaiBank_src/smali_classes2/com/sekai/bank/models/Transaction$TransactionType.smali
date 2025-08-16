.class public final enum Lcom/sekai/bank/models/Transaction$TransactionType;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/models/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sekai/bank/models/Transaction$TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sekai/bank/models/Transaction$TransactionType;

.field public static final enum RECEIVED:Lcom/sekai/bank/models/Transaction$TransactionType;

.field public static final enum SENT:Lcom/sekai/bank/models/Transaction$TransactionType;


# direct methods
.method private static synthetic $values()[Lcom/sekai/bank/models/Transaction$TransactionType;
    .locals 2

    .line 19
    sget-object v0, Lcom/sekai/bank/models/Transaction$TransactionType;->SENT:Lcom/sekai/bank/models/Transaction$TransactionType;

    sget-object v1, Lcom/sekai/bank/models/Transaction$TransactionType;->RECEIVED:Lcom/sekai/bank/models/Transaction$TransactionType;

    filled-new-array {v0, v1}, [Lcom/sekai/bank/models/Transaction$TransactionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/sekai/bank/models/Transaction$TransactionType;

    const-string v1, "SENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/models/Transaction$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/models/Transaction$TransactionType;->SENT:Lcom/sekai/bank/models/Transaction$TransactionType;

    new-instance v0, Lcom/sekai/bank/models/Transaction$TransactionType;

    const-string v1, "RECEIVED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/models/Transaction$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/models/Transaction$TransactionType;->RECEIVED:Lcom/sekai/bank/models/Transaction$TransactionType;

    .line 19
    invoke-static {}, Lcom/sekai/bank/models/Transaction$TransactionType;->$values()[Lcom/sekai/bank/models/Transaction$TransactionType;

    move-result-object v0

    sput-object v0, Lcom/sekai/bank/models/Transaction$TransactionType;->$VALUES:[Lcom/sekai/bank/models/Transaction$TransactionType;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sekai/bank/models/Transaction$TransactionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    const-class v0, Lcom/sekai/bank/models/Transaction$TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sekai/bank/models/Transaction$TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/sekai/bank/models/Transaction$TransactionType;
    .locals 1

    .line 19
    sget-object v0, Lcom/sekai/bank/models/Transaction$TransactionType;->$VALUES:[Lcom/sekai/bank/models/Transaction$TransactionType;

    invoke-virtual {v0}, [Lcom/sekai/bank/models/Transaction$TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sekai/bank/models/Transaction$TransactionType;

    return-object v0
.end method
