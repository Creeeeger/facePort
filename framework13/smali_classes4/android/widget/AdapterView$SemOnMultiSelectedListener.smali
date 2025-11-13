.class public interface abstract Landroid/widget/AdapterView$SemOnMultiSelectedListener;
.super Ljava/lang/Object;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SemOnMultiSelectedListener"
.end annotation


# virtual methods
.method public abstract greylist onMultiSelectStart(II)V
.end method

.method public abstract greylist onMultiSelectStop(II)V
.end method

.method public abstract greylist onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation
.end method
