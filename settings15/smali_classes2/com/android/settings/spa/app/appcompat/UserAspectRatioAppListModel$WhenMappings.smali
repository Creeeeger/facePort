.class public abstract synthetic Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$WhenMappings;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->values()[Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->Suggested:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->Suggested:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    const/4 v1, 0x2

    aput v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
