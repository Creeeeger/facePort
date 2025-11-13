.class abstract enum Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/asbase/vibration/VibUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "PathIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

.field public static final enum EXIST:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$1;

.field public static final enum NOT_EXIST:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->EXIST:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$1;

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$2;

    invoke-direct {v1}, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$2;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->NOT_EXIST:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$2;

    filled-new-array {v0, v1}, [Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->$VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->$VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    return-object v0
.end method


# virtual methods
.method public abstract getSelection(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSelectionArgs(Landroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;
.end method
