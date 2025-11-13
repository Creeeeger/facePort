.class public final Lcom/android/systemui/volume/config/VolumeConfigs;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final systemConfig$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/config/VolumeConfigs;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/volume/config/VolumeConfigs$systemConfig$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/config/VolumeConfigs$systemConfig$2;-><init>(Lcom/android/systemui/volume/config/VolumeConfigs;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    return-void
.end method
