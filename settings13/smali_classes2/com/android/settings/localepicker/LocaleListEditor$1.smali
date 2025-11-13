.class Lcom/android/settings/localepicker/LocaleListEditor$1;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/LocaleListEditor;
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

    .line 118
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmAdapter(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setLocaleOverlayManager(Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    .line 126
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmAdapter(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setLocaleOverlayManager(Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V

    return-void
.end method
