.class public Lcom/samsung/android/settings/voiceinput/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final SCS_LANGPKG_CHANGE:Ljava/lang/Integer;

.field public static final SCS_STABLE_VERSION:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x8588dd0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/voiceinput/Constants;->SCS_STABLE_VERSION:Ljava/lang/Integer;

    const v0, 0x858c868

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/voiceinput/Constants;->SCS_LANGPKG_CHANGE:Ljava/lang/Integer;

    return-void
.end method
