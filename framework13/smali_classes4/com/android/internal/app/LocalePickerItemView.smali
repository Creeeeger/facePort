.class public Lcom/android/internal/app/LocalePickerItemView;
.super Landroid/widget/LinearLayout;
.source "LocalePickerItemView.java"


# static fields
.field public static final blacklist LOCALE_PICKER_TYPE_HEADER:I = 0x0

.field public static final blacklist LOCALE_PICKER_TYPE_ITEM:I = 0x1


# instance fields
.field blacklist mItemType:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defStyle"    # I
    .param p3, "li"    # Landroid/view/LayoutInflater;

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput p2, p0, Lcom/android/internal/app/LocalePickerItemView;->mItemType:I

    .line 29
    invoke-direct {p0, p3}, Lcom/android/internal/app/LocalePickerItemView;->init(Landroid/view/LayoutInflater;)V

    .line 30
    return-void
.end method

.method private blacklist init(Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "li"    # Landroid/view/LayoutInflater;

    .line 34
    iget v0, p0, Lcom/android/internal/app/LocalePickerItemView;->mItemType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 35
    const v0, 0x1090166

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_0

    .line 37
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    const v0, 0x10900ac

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .restart local v0    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerItemView;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method
