.class public Lcom/android/internal/app/SemLocalePickerItemView;
.super Landroid/widget/LinearLayout;
.source "SemLocalePickerItemView.java"


# static fields
.field public static final blacklist LOCALE_PICKER_TYPE_HEADER:I = 0x0

.field public static final blacklist LOCALE_PICKER_TYPE_ITEM:I = 0x1


# instance fields
.field blacklist mItemType:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/android/internal/app/SemLocalePickerItemView;->mItemType:I

    invoke-direct {p0, p3}, Lcom/android/internal/app/SemLocalePickerItemView;->init(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private blacklist init(Landroid/view/LayoutInflater;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/app/SemLocalePickerItemView;->mItemType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x109016f

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x10900af

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/app/SemLocalePickerItemView;->addView(Landroid/view/View;)V

    return-void
.end method
