.class public final enum Lcom/samsung/android/settings/asbase/vibration/VibUri;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/asbase/vibration/VibUri;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibUri;

.field public static final enum NOTIFICATION_PATH_WITH_INDEX:Lcom/samsung/android/settings/asbase/vibration/VibUri;

.field public static final enum RINGTONE_PATH_WITH_INDEX:Lcom/samsung/android/settings/asbase/vibration/VibUri;

.field public static final enum RINGTONE_WITH_INDEX:Lcom/samsung/android/settings/asbase/vibration/VibUri;

.field public static final enum TABLE_PATH:Lcom/samsung/android/settings/asbase/vibration/VibUri;

.field public static final typeMap:Ljava/util/Map;


# instance fields
.field private final pathIndex:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

.field private final uriType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibUri;

    sget-object v1, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->NOT_EXIST:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$2;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "TABLE_PATH"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/samsung/android/settings/asbase/vibration/VibUri;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;)V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->TABLE_PATH:Lcom/samsung/android/settings/asbase/vibration/VibUri;

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/VibUri;

    sget-object v2, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->EXIST:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex$1;

    const-string v3, "RINGTONE_WITH_INDEX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/samsung/android/settings/asbase/vibration/VibUri;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;)V

    sput-object v1, Lcom/samsung/android/settings/asbase/vibration/VibUri;->RINGTONE_WITH_INDEX:Lcom/samsung/android/settings/asbase/vibration/VibUri;

    new-instance v3, Lcom/samsung/android/settings/asbase/vibration/VibUri;

    const/4 v4, 0x2

    const-string v5, "RINGTONE_PATH_WITH_INDEX"

    invoke-direct {v3, v5, v4, v4, v2}, Lcom/samsung/android/settings/asbase/vibration/VibUri;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;)V

    sput-object v3, Lcom/samsung/android/settings/asbase/vibration/VibUri;->RINGTONE_PATH_WITH_INDEX:Lcom/samsung/android/settings/asbase/vibration/VibUri;

    new-instance v4, Lcom/samsung/android/settings/asbase/vibration/VibUri;

    const/4 v5, 0x3

    const-string v6, "NOTIFICATION_PATH_WITH_INDEX"

    invoke-direct {v4, v6, v5, v5, v2}, Lcom/samsung/android/settings/asbase/vibration/VibUri;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;)V

    sput-object v4, Lcom/samsung/android/settings/asbase/vibration/VibUri;->NOTIFICATION_PATH_WITH_INDEX:Lcom/samsung/android/settings/asbase/vibration/VibUri;

    filled-new-array {v0, v1, v3, v4}, [Lcom/samsung/android/settings/asbase/vibration/VibUri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->$VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibUri;

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibUri$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/asbase/vibration/VibUri$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->typeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->uriType:I

    iput-object p4, p0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->pathIndex:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/asbase/vibration/VibUri;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/asbase/vibration/VibUri;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/vibration/VibUri;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/asbase/vibration/VibUri;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->$VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibUri;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/asbase/vibration/VibUri;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/asbase/vibration/VibUri;

    return-object v0
.end method


# virtual methods
.method public final getSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->pathIndex:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectionArgs(Landroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->pathIndex:Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/asbase/vibration/VibUri$PathIndex;->getSelectionArgs(Landroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibUri;->uriType:I

    return p0
.end method
