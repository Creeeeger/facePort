.class public final synthetic Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda7;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda7;->f$1:Landroid/app/Activity;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->$r8$lambda$RbcBDZ9bm0w68tWFgjqg19zguaw(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
