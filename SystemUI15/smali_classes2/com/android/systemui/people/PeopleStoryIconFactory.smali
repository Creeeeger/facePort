.class public final Lcom/android/systemui/people/PeopleStoryIconFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mAccentColor:I

.field public final mContext:Landroid/content/Context;

.field public final mDensity:F

.field public final mIconBitmapSize:I

.field public final mIconSize:F

.field public final mImportantConversationColor:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Landroid/view/ContextThemeWrapper;

    const v0, 0x10302e3

    invoke-direct {p3, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mContext:Landroid/content/Context;

    int-to-float p1, p4

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p4, p1

    float-to-int p4, p4

    iput p4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconBitmapSize:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    iput p4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mDensity:F

    mul-float/2addr p4, p1

    iput p4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconSize:F

    iput-object p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    const p1, 0x7f060171

    invoke-virtual {p3, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mImportantConversationColor:I

    const p1, 0x1120027

    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mAccentColor:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
