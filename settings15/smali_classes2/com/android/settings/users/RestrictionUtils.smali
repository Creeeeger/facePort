.class public abstract Lcom/android/settings/users/RestrictionUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sRestrictionDescriptions:[I

.field public static final sRestrictionKeys:[Ljava/lang/String;

.field public static final sRestrictionTitles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "no_share_location"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    const v0, 0x7f141f0a

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    const v0, 0x7f141f09

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    return-void
.end method
