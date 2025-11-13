.class Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;
.super Ljava/lang/Object;
.source "SecScreenZoomPreferenceFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onViewingTypeCheckedChangeListener"
.end annotation


# instance fields
.field private final mCommit:Landroid/view/Choreographer$FrameCallback;

.field final synthetic this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;


# direct methods
.method public static synthetic $r8$lambda$41ZmEXbT_u5LmocIJmF2IgBF2AE(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->lambda$new$0(J)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    return-void
.end method

.method private synthetic lambda$new$0(J)V
    .locals 0

    .line 261
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmIsLargerContent(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Z

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmLargerContentMinIndex(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)I

    move-result p0

    if-eqz p2, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    invoke-static {p1, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$mcommit(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;I)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 268
    sget p2, Lcom/android/settings/R$id;->moreContentButton:I

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmIsLargerContent(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    sget p2, Lcom/android/settings/R$id;->largerContentButton:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmIsLargerContent(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 270
    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    .line 271
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 272
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    :cond_2
    return-void
.end method
