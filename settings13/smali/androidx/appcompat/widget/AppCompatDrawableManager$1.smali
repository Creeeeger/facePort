.class Landroidx/appcompat/widget/AppCompatDrawableManager$1;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatDrawableManager;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final TINT_CHECKABLE_BUTTON_LIST:[I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 128
    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_check_material_anim:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_radio_material_anim:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method


# virtual methods
.method public createDrawableFor(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceManager",
            "context",
            "resId"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTintModeForDrawableRes(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public tintDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resId",
            "drawable"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resId",
            "drawable"
        }
    .end annotation

    .line 402
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    const/4 p0, 0x0

    return p0
.end method
