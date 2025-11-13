.class Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;
.super Ljava/lang/Object;
.source "AppPickerIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AppPickerIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconInfo"
.end annotation


# instance fields
.field activityName:Ljava/lang/String;

.field drawable:Landroid/graphics/drawable/Drawable;

.field imageView:Landroid/widget/ImageView;

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->packageName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->imageView:Landroid/widget/ImageView;

    .line 50
    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->activityName:Ljava/lang/String;

    return-void
.end method
