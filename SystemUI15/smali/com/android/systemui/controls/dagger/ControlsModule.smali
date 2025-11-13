.class public abstract Lcom/android/systemui/controls/dagger/ControlsModule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/controls/dagger/ControlsModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/dagger/ControlsModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/dagger/ControlsModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/dagger/ControlsModule;->Companion:Lcom/android/systemui/controls/dagger/ControlsModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final providesControlsFeatureEnabled(Landroid/content/pm/PackageManager;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/controls/dagger/ControlsModule;->Companion:Lcom/android/systemui/controls/dagger/ControlsModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.software.controls"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
