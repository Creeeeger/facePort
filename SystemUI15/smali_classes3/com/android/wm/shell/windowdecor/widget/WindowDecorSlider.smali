.class public Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;
.super Landroid/widget/SeekBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mSetControlDisabledRunnable:Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f1408d6

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;-><init>(Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;I)V

    new-instance p2, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;)V

    const/16 p2, 0x3c

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    const p2, 0x7f080738

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->semSetMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v1, p0, Landroid/widget/SeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wallpapertheme_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x1060395

    goto :goto_0

    :cond_1
    const v1, 0x1060394

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v0, :cond_2

    const v0, 0x1060393

    goto :goto_1

    :cond_2
    const v0, 0x1060392

    :goto_1
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const p2, 0x7f13108b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
