.class public abstract Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mInsets:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat;-><init>()V

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyInsetTypes()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract build()Landroidx/core/view/WindowInsetsCompat;
.end method

.method public abstract setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
.end method
