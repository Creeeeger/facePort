.class public Lcom/samsung/android/settings/voiceinput/Constants;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;
    }
.end annotation


# static fields
.field public static final DICTATION_LANGPACK_REQUEST_TIME:Ljava/lang/String; = "dictation_langpack_request_time"

.field public static final GALAXY_STORE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final IS_FIRST_FETCH_FROM_SERVER:Ljava/lang/String; = "is_first_fetch_from_server"

.field public static final IS_OFFLINE:Ljava/lang/String; = "is_offline"

.field public static final KEY_HIDE_OFFENSIVE_WORDS:Ljava/lang/String; = "hide_offensive_word"

.field public static final RESULT_CODE_NEED_UPDATE:I = 0x2

.field public static final SCS_LANGPKG_CHANGE:Ljava/lang/Integer;

.field public static final SCS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.scs"

.field public static final SCS_STABLE_VERSION:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x8588dd0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/voiceinput/Constants;->SCS_STABLE_VERSION:Ljava/lang/Integer;

    const v0, 0x858c868

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/voiceinput/Constants;->SCS_LANGPKG_CHANGE:Ljava/lang/Integer;

    return-void
.end method
