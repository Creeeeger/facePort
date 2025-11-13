.class abstract enum Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;
.super Ljava/lang/Enum;
.source "VibUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "PathIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

.field public static final enum EXIST:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

.field public static final enum NOT_EXIST:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex$1;

    const-string v1, "EXIST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex$1;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/as/vibration/VibUri$PathIndex$1-IA;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->EXIST:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    .line 62
    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex$2;

    const-string v4, "NOT_EXIST"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex$2;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/as/vibration/VibUri$PathIndex$2-IA;)V

    sput-object v1, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->NOT_EXIST:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 47
    sput-object v3, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->$VALUES:[Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/settings/as/vibration/VibUri$PathIndex-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;
    .locals 1

    .line 47
    const-class v0, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;
    .locals 1

    .line 47
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->$VALUES:[Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    return-object v0
.end method


# virtual methods
.method public abstract getSelection(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSelectionArgs(Landroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;
.end method
