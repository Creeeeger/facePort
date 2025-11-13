.class public final Landroidx/appcompat/widget/AppCompatTextHelper$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$style:I

.field public final synthetic val$textView:Landroid/widget/TextView;

.field public final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->val$textView:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->val$typeface:Landroid/graphics/Typeface;

    .line 7
    .line 8
    iput p3, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->val$style:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->val$textView:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->val$typeface:Landroid/graphics/Typeface;

    .line 4
    .line 5
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->val$style:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
