.class public interface abstract annotation Landroid/annotation/RestrictedFor;
.super Ljava/lang/Object;
.source "RestrictedFor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/annotation/RestrictedFor$Container;,
        Landroid/annotation/RestrictedFor$Environment;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Landroid/annotation/RestrictedFor$Container;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist environments()[Landroid/annotation/RestrictedFor$Environment;
.end method

.method public abstract blacklist from()I
.end method
