.class Landroid/widget/DayPickerPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final blacklist calendar:Landroid/widget/SimpleMonthView;

.field public final blacklist container:Landroid/view/View;

.field public final blacklist position:I


# direct methods
.method public constructor blacklist <init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    iput-object p2, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    return-void
.end method
