.class public Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;
.super Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
.source "AppPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AppPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeparatorViewHolder"
.end annotation


# instance fields
.field private final mSeparatorText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 765
    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 766
    sget v0, Landroidx/apppickerview/R$id;->separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;->mSeparatorText:Landroid/widget/TextView;

    return-void
.end method
