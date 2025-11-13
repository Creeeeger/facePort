.class Landroidx/preference/SeslSeekBarDialogPreference;
.super Landroidx/preference/DialogPreference;
.source "SeslSeekBarDialogPreference.java"


# instance fields
.field private final mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    sget v0, Landroidx/preference/R$attr;->seekBarDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeslSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeslSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-virtual {p0}, Landroidx/preference/SeslSeekBarDialogPreference;->createActionButtons()V

    .line 42
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/SeslSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    const v0, 0x104000a

    .line 61
    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setPositiveButtonText(I)V

    const/high16 v0, 0x1040000

    .line 62
    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setNegativeButtonText(I)V

    return-void
.end method
