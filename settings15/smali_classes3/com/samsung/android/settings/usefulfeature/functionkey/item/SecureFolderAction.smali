.class public abstract Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PRIVATEMODE_PACKAGE_NAME:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field public static final actionType:I

.field public static final actionValue:Ljava/lang/String;

.field public static final key:Ljava/lang/String;

.field public static final pressType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->TAG:Ljava/lang/String;

    const-string v0, "key_secure_folder"

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->key:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->actionType:I

    const-string/jumbo v0, "secureFolder/secureFolder"

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->actionValue:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->pressType:I

    const-string v0, "com.samsung.android.aliveprivacy"

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->PRIVATEMODE_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method
