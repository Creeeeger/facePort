.class public final enum Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;
.super Ljava/lang/Enum;
.source "RecognizerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/RecognizerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

.field public static final enum AVAILABLE:Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

.field public static final enum NOT_AVAILABLE:Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->AVAILABLE:Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    const-string v3, "NOT_AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->NOT_AVAILABLE:Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 17
    sput-object v3, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->$VALUES:[Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->$VALUES:[Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    return-object v0
.end method
