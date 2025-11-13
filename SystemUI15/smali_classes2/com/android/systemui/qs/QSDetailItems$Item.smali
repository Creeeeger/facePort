.class public final Lcom/android/systemui/qs/QSDetailItems$Item;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon2:I

.field public iconResId:I

.field public iconVisibility:Z

.field public isActive:Z

.field public isClickable:Z

.field public isDisabled:Z

.field public isInProgress:Z

.field public itemPaddingAboveBelow:I

.field public line1:Ljava/lang/CharSequence;

.field public line1textSize:F

.field public line2:Ljava/lang/CharSequence;

.field public line2textSize:F

.field public overlay:Landroid/graphics/drawable/Drawable;

.field public tag:Ljava/lang/Object;

.field public updateIconSize:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->updateIconSize:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->iconVisibility:Z

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->itemPaddingAboveBelow:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->line1textSize:F

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->line2textSize:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    return-void
.end method
