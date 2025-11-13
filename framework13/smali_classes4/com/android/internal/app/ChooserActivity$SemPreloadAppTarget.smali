.class public Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemPreloadAppTarget"
.end annotation


# instance fields
.field public blacklist displayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field public blacklist extraLabel:Ljava/lang/CharSequence;

.field public blacklist mainLabel:Ljava/lang/CharSequence;

.field public blacklist preloadType:I


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "main"    # Ljava/lang/CharSequence;
    .param p4, "extra"    # Ljava/lang/CharSequence;

    .line 12149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12150
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->preloadType:I

    .line 12151
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->displayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 12152
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->mainLabel:Ljava/lang/CharSequence;

    .line 12153
    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    .line 12154
    return-void
.end method
