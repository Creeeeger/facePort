.class public final enum Lcom/samsung/android/settings/as/vibration/VibUri;
.super Ljava/lang/Enum;
.source "VibUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/as/vibration/VibUri;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/as/vibration/VibUri;

.field public static final enum NOTIFICATION_PATH_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

.field public static final enum RINGTONE_PATH_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

.field public static final enum RINGTONE_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

.field public static final enum TABLE_PATH:Lcom/samsung/android/settings/as/vibration/VibUri;

.field private static final typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/as/vibration/VibUri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pathIndex:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

.field private final uriType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 12
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibUri;

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->NOT_EXIST:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    const-string v2, "TABLE_PATH"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/settings/as/vibration/VibUri;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibUri$PathIndex;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibUri;->TABLE_PATH:Lcom/samsung/android/settings/as/vibration/VibUri;

    .line 13
    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibUri;

    sget-object v2, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->EXIST:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    const-string v4, "RINGTONE_WITH_INDEX"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lcom/samsung/android/settings/as/vibration/VibUri;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibUri$PathIndex;)V

    sput-object v1, Lcom/samsung/android/settings/as/vibration/VibUri;->RINGTONE_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    .line 14
    new-instance v4, Lcom/samsung/android/settings/as/vibration/VibUri;

    const-string v6, "RINGTONE_PATH_WITH_INDEX"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v7, v2}, Lcom/samsung/android/settings/as/vibration/VibUri;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibUri$PathIndex;)V

    sput-object v4, Lcom/samsung/android/settings/as/vibration/VibUri;->RINGTONE_PATH_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    .line 15
    new-instance v6, Lcom/samsung/android/settings/as/vibration/VibUri;

    const-string v8, "NOTIFICATION_PATH_WITH_INDEX"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v9, v2}, Lcom/samsung/android/settings/as/vibration/VibUri;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibUri$PathIndex;)V

    sput-object v6, Lcom/samsung/android/settings/as/vibration/VibUri;->NOTIFICATION_PATH_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/samsung/android/settings/as/vibration/VibUri;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    aput-object v4, v2, v7

    aput-object v6, v2, v9

    .line 11
    sput-object v2, Lcom/samsung/android/settings/as/vibration/VibUri;->$VALUES:[Lcom/samsung/android/settings/as/vibration/VibUri;

    .line 19
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibUri$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/vibration/VibUri$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibUri;->typeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibUri$PathIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/samsung/android/settings/as/vibration/VibUri;->uriType:I

    .line 28
    iput-object p4, p0, Lcom/samsung/android/settings/as/vibration/VibUri;->pathIndex:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    return-void
.end method

.method public static getUriType(I)Lcom/samsung/android/settings/as/vibration/VibUri;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibUri;->typeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/VibUri;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/as/vibration/VibUri;
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/android/settings/as/vibration/VibUri;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/VibUri;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/as/vibration/VibUri;
    .locals 1

    .line 11
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibUri;->$VALUES:[Lcom/samsung/android/settings/as/vibration/VibUri;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/as/vibration/VibUri;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/as/vibration/VibUri;

    return-object v0
.end method


# virtual methods
.method public getSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibUri;->pathIndex:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectionArgs(Landroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibUri;->pathIndex:Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;->getSelectionArgs(Landroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibUri;->uriType:I

    return p0
.end method
