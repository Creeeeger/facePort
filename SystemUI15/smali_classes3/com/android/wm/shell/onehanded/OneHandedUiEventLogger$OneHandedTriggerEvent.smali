.class public final enum Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

.field public static final enum ONE_HANDED_TRIGGER_APP_TAPS_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

.field public static final enum ONE_HANDED_TRIGGER_GESTURE_IN:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

.field public static final enum ONE_HANDED_TRIGGER_GESTURE_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

.field public static final enum ONE_HANDED_TRIGGER_OVERSPACE_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

.field public static final enum ONE_HANDED_TRIGGER_POP_IME_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

.field public static final enum ONE_HANDED_TRIGGER_ROTATION_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

.field public static final enum ONE_HANDED_TRIGGER_SCREEN_OFF_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

.field public static final enum ONE_HANDED_TRIGGER_TIMEOUT_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const/16 v2, 0x16e

    const-string v3, "ONE_HANDED_TRIGGER_GESTURE_IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_GESTURE_IN:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const/16 v3, 0x16f

    const-string v4, "ONE_HANDED_TRIGGER_GESTURE_OUT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_GESTURE_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const/16 v4, 0x170

    const-string v5, "ONE_HANDED_TRIGGER_OVERSPACE_OUT"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_OVERSPACE_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    new-instance v4, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const/16 v5, 0x171

    const-string v6, "ONE_HANDED_TRIGGER_POP_IME_OUT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_POP_IME_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const/16 v6, 0x172

    const-string v7, "ONE_HANDED_TRIGGER_ROTATION_OUT"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_ROTATION_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const/16 v7, 0x173

    const-string v8, "ONE_HANDED_TRIGGER_APP_TAPS_OUT"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_APP_TAPS_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    new-instance v7, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const/16 v8, 0x174

    const-string v9, "ONE_HANDED_TRIGGER_TIMEOUT_OUT"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_TIMEOUT_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    new-instance v8, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    const/16 v9, 0x1c1

    const-string v10, "ONE_HANDED_TRIGGER_SCREEN_OFF_OUT"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_SCREEN_OFF_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    filled-new-array/range {v0 .. v8}, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->$VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;
    .locals 1

    const-class v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->$VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    invoke-virtual {v0}, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->mId:I

    return p0
.end method
