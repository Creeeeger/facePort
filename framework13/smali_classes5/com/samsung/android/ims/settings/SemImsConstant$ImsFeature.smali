.class public final enum Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;
.super Ljava/lang/Enum;
.source "SemImsConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImsFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

.field public static final enum blacklist VIDEO_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

.field public static final enum blacklist VOICE_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    const-string v1, "VOICE_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->VOICE_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    .line 32
    new-instance v1, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    const-string v3, "VIDEO_CALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->VIDEO_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    .line 24
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->$VALUES:[Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->$VALUES:[Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    return-object v0
.end method
