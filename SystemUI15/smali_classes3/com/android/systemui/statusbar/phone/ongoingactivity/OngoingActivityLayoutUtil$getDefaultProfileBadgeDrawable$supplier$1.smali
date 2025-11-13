.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$getDefaultProfileBadgeDrawable$supplier$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $userId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$getDefaultProfileBadgeDrawable$supplier$1;->$context:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$getDefaultProfileBadgeDrawable$supplier$1;->$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$getDefaultProfileBadgeDrawable$supplier$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$getDefaultProfileBadgeDrawable$supplier$1;->$userId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
