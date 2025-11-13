.class public abstract synthetic Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$WhenMappings;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->values()[Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
