.class public final Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/properties/ReadWriteProperty;


# instance fields
.field public final contentResolver:Landroid/content/ContentResolver;

.field public final defaultValue:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;->defaultValue:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "getContentResolver(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;->contentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;->name:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;->defaultValue:Z

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
