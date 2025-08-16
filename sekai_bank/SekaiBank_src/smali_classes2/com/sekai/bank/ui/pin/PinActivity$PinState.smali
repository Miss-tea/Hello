.class final enum Lcom/sekai/bank/ui/pin/PinActivity$PinState;
.super Ljava/lang/Enum;
.source "PinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/ui/pin/PinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PinState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sekai/bank/ui/pin/PinActivity$PinState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sekai/bank/ui/pin/PinActivity$PinState;

.field public static final enum CONFIRMATION:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

.field public static final enum FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

.field public static final enum NEW_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

.field public static final enum NEW_PIN_CONFIRM:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

.field public static final enum OLD_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;


# direct methods
.method private static synthetic $values()[Lcom/sekai/bank/ui/pin/PinActivity$PinState;
    .locals 5

    .line 34
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    sget-object v1, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->CONFIRMATION:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    sget-object v2, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->OLD_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    sget-object v3, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->NEW_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    sget-object v4, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->NEW_PIN_CONFIRM:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    const-string v1, "FIRST_ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    const-string v1, "CONFIRMATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->CONFIRMATION:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    const-string v1, "OLD_PIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->OLD_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    const-string v1, "NEW_PIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->NEW_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    const-string v1, "NEW_PIN_CONFIRM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->NEW_PIN_CONFIRM:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 34
    invoke-static {}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->$values()[Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    move-result-object v0

    sput-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->$VALUES:[Lcom/sekai/bank/ui/pin/PinActivity$PinState;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sekai/bank/ui/pin/PinActivity$PinState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    const-class v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    return-object p0
.end method

.method public static values()[Lcom/sekai/bank/ui/pin/PinActivity$PinState;
    .locals 1

    .line 34
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->$VALUES:[Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-virtual {v0}, [Lcom/sekai/bank/ui/pin/PinActivity$PinState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    return-object v0
.end method
