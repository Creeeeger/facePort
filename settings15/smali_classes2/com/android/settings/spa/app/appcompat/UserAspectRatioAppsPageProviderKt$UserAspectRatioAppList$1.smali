.class final synthetic Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProviderKt$UserAspectRatioAppList$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProviderKt$UserAspectRatioAppList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProviderKt$UserAspectRatioAppList$1;

    invoke-direct {v0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProviderKt$UserAspectRatioAppList$1;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProviderKt$UserAspectRatioAppList$1;->INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProviderKt$UserAspectRatioAppList$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "<init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)V"

    const-class v1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    invoke-direct {p0, v1, v0}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    invoke-direct {p0, p1}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
