.class final enum Lcom/android/systemui/screenshot/appclips/AppClipsEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/appclips/AppClipsEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

.field public static final enum SCREENSHOT_FOR_NOTE_ACCEPTED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

.field public static final enum SCREENSHOT_FOR_NOTE_CANCELLED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

.field public static final enum SCREENSHOT_FOR_NOTE_TRIGGERED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    const/4 v1, 0x0

    const/16 v2, 0x51c

    const-string v3, "SCREENSHOT_FOR_NOTE_TRIGGERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->SCREENSHOT_FOR_NOTE_TRIGGERED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    const/4 v2, 0x1

    const/16 v3, 0x51d

    const-string v4, "SCREENSHOT_FOR_NOTE_ACCEPTED"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->SCREENSHOT_FOR_NOTE_ACCEPTED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    new-instance v2, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    const/4 v3, 0x2

    const/16 v4, 0x51e

    const-string v5, "SCREENSHOT_FOR_NOTE_CANCELLED"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->SCREENSHOT_FOR_NOTE_CANCELLED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->$VALUES:[Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

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

    iput p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/appclips/AppClipsEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/appclips/AppClipsEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->$VALUES:[Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->mId:I

    return p0
.end method
