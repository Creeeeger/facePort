.class final Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$mobileDataSelectedId$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/MutableIntState;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$mobileDataSelectedId$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$mobileDataSelectedId$1;

    invoke-direct {v0}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$mobileDataSelectedId$1;-><init>()V

    sput-object v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$mobileDataSelectedId$1;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$mobileDataSelectedId$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    const/4 p0, -0x1

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    move-result-object p0

    return-object p0
.end method
