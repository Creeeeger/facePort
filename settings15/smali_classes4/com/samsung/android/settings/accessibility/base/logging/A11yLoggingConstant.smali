.class public abstract Lcom/samsung/android/settings/accessibility/base/logging/A11yLoggingConstant;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PREF_CLICK_EVENT_ID_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/base/logging/A11yLoggingConstant;->PREF_CLICK_EVENT_ID_MAP:Ljava/util/Map;

    return-void
.end method
