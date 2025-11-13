.class public Lcom/samsung/android/settings/share/SelectAppUiState;
.super Ljava/lang/Object;
.source "SelectAppUiState.java"


# instance fields
.field private final mIsDragging:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/samsung/android/settings/share/SelectAppUiState;->mIsDragging:Z

    return-void
.end method


# virtual methods
.method public isDragging()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/samsung/android/settings/share/SelectAppUiState;->mIsDragging:Z

    return p0
.end method
