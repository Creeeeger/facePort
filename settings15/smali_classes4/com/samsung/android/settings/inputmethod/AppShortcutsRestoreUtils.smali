.class public abstract Lcom/samsung/android/settings/inputmethod/AppShortcutsRestoreUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mDefaultValues:Ljava/util/List;

.field public static final mSettingList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/ArrayList;

    const-string v14, "app_shortcuts_command_s"

    const-string v15, "app_shortcuts_command_z"

    const-string v1, "app_shortcuts_command_a"

    const-string v2, "app_shortcuts_command_b"

    const-string v3, "app_shortcuts_command_c"

    const-string v4, "app_shortcuts_command_d"

    const-string v5, "app_shortcuts_command_e"

    const-string v6, "app_shortcuts_command_f"

    const-string v7, "app_shortcuts_command_h"

    const-string v8, "app_shortcuts_command_i"

    const-string v9, "app_shortcuts_command_j"

    const-string v10, "app_shortcuts_command_k"

    const-string v11, "app_shortcuts_command_m"

    const-string v12, "app_shortcuts_command_p"

    const-string v13, "app_shortcuts_command_r"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsRestoreUtils;->mSettingList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v14, "android.app.role.SMS"

    const-string v15, "com.android.settings"

    const-string v1, "android.app.role.ASSISTANT"

    const-string v2, "android.app.role.BROWSER"

    const-string v3, "android.intent.category.APP_CONTACTS"

    const-string v4, "android.app.role.HOME"

    const-string v5, "android.intent.category.APP_EMAIL"

    const-string v6, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    const-string v7, "android.app.role.HOME"

    const-string v8, "com.android.settings"

    const-string v9, "com.samsung.android.app.tips"

    const-string v10, "android.intent.category.APP_CALENDAR"

    const-string v11, "android.intent.category.APP_MAPS"

    const-string v12, "android.intent.category.APP_MUSIC"

    const-string v13, "com.sec.android.app.myfiles"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsRestoreUtils;->mDefaultValues:Ljava/util/List;

    return-void
.end method
