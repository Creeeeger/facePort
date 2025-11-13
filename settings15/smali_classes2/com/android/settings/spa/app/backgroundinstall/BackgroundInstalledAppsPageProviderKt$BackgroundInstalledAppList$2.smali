.class final Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt$BackgroundInstalledAppList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
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


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $appList:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt$BackgroundInstalledAppList$2;->$appList:Lkotlin/jvm/functions/Function3;

    iput p2, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt$BackgroundInstalledAppList$2;->$$changed:I

    iput p3, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt$BackgroundInstalledAppList$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt$BackgroundInstalledAppList$2;->$appList:Lkotlin/jvm/functions/Function3;

    iget v0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt$BackgroundInstalledAppList$2;->$$changed:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    iget p0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt$BackgroundInstalledAppList$2;->$$default:I

    invoke-static {p2, p1, v0, p0}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt;->BackgroundInstalledAppList(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
