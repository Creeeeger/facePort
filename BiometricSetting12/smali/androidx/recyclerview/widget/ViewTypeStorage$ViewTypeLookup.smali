.class public interface abstract Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewTypeLookup"
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract globalToLocal(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalType"
        }
    .end annotation
.end method

.method public abstract localToGlobal(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localType"
        }
    .end annotation
.end method
