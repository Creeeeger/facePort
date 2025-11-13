.class public abstract Lcom/android/settings/homepage/HighlightableMenu;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final MENU_KEY_COMPAT_MAP:Ljava/util/Map;

.field public static final MENU_TO_PREFERENCE_KEY_MAP:Ljava/util/Map;

.field public static sXmlParsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/HighlightableMenu;->MENU_TO_PREFERENCE_KEY_MAP:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/HighlightableMenu;->MENU_KEY_COMPAT_MAP:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized addMenuKey(Ljava/lang/String;)V
    .locals 4

    const-string v0, "add menu key: "

    const-class v1, Lcom/android/settings/homepage/HighlightableMenu;

    monitor-enter v1

    :try_start_0
    const-string v2, "HighlightableMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/homepage/HighlightableMenu;->MENU_TO_PREFERENCE_KEY_MAP:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
