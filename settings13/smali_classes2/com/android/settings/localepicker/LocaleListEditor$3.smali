.class Lcom/android/settings/localepicker/LocaleListEditor$3;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->setBottomNaviButtonForRemove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$3;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 209
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$3;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmAdapter(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    .line 210
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$3;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmAdapter(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    .line 211
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$3;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1f4d

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
