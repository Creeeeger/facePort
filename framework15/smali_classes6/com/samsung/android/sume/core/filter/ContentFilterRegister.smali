.class public interface abstract Lcom/samsung/android/sume/core/filter/ContentFilterRegister;
.super Ljava/lang/Object;
.source "ContentFilterRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/filter/ContentFilterRegister$FilterType;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final blacklist FILTER_DATA_TYPE:I = 0x2

.field public static final blacklist FILTER_DIMENSION:I = 0x1

.field public static final blacklist FILTER_MEDIA_TYPE:I = 0x3


# virtual methods
.method public abstract blacklist registerFilter(Lcom/samsung/android/sume/core/filter/ContentFilterRegistry;)V
.end method
