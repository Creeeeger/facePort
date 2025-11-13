.class public Landroid/view/inputmethod/SemInputMethodManagerUtils;
.super Ljava/lang/Object;
.source "SemInputMethodManagerUtils.java"


# static fields
.field public static final blacklist ACTION_DEACTIVATE:Ljava/lang/String; = "actionDeactivate"

.field public static final blacklist ACTION_SHOW_TOOLKIT_HBD:Ljava/lang/String; = "actionShowToolKitHbd"

.field public static final blacklist ACTION_UPDATE_TOOLKIT_HBD:Ljava/lang/String; = "actionUpdateToolKitHbd"

.field public static final blacklist CLASS_NAME_TOOLKIT_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

.field static final blacklist DEBUG_CALL_STACK:Z

.field public static final blacklist KEY_SELECTED_TEXT:Ljava/lang/String; = "selectedText"

.field public static final blacklist METHOD_ID_BIXBY:Ljava/lang/String; = "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

.field public static final blacklist METHOD_ID_BIXBY_DICTATION:Ljava/lang/String; = "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

.field public static final blacklist METHOD_ID_BIXBY_OLD:Ljava/lang/String; = "com.samsung.android.svoiceime/.BixbyDictVoiceReco"

.field public static final blacklist METHOD_ID_CUSTOMIZED_SOGOU:Ljava/lang/String; = "com.sohu.inputmethod.sogou.samsung/.SogouIME"

.field public static final blacklist METHOD_ID_GOOGLE_VOICE_TTS:Ljava/lang/String; = "com.google.android.tts/com.google.android.apps.speech.tts.googletts.settings.asr.voiceime.VoiceInputMethodService"

.field public static final blacklist METHOD_ID_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard/.service.HoneyBoardService"

.field public static final blacklist METHOD_ID_SWIFTKEY:Ljava/lang/String; = "com.touchtype.swiftkey/com.touchtype.KeyboardService"

.field public static final blacklist METHOD_ID_TOOLKIT_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

.field public static final blacklist PACKAGE_GOOGLE_VOICE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final blacklist PACKAGE_GOOGLE_VOICE_TTS:Ljava/lang/String; = "com.google.android.tts"

.field public static final blacklist PACKAGE_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard"

.field private static final blacklist PROP_ENABLE_DEBUG_CALL_STACK:Ljava/lang/String; = "persist.sys.ime.enable_debug_call_stack"

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodManagerUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.ime.enable_debug_call_stack"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/SemInputMethodManagerUtils;->DEBUG_CALL_STACK:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;
    .locals 1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getMaxLengthForEditText(Landroid/widget/EditText;)I
    .locals 10

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/widget/EditText;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    instance-of v6, v5, Landroid/text/InputFilter$LengthFilter;

    const-string v7, "InputMethodManagerUtils"

    if-eqz v6, :cond_0

    :try_start_0
    move-object v6, v5

    check-cast v6, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v6}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMaxLengthForEditText LengthFilter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Landroid/text/InputFilter;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "getMaxLength"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMaxLengthForEditText InputFilter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v0
.end method

.method static blacklist isWritingToolkitDisallowedByKnox()Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/SemInputMethodManagerUtils;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "com.samsung.android.knox.galaxyai"

    invoke-virtual {v0, v2, v1}, Landroid/sec/enterprise/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_writing_toolkit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "grayout"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static blacklist putInfoInExtra(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    const-string v1, "InputMethodManagerUtils"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting input: editorInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo v0, "putInfoInExtra: view is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Landroid/view/inputmethod/SemInputMethodManagerUtils;->getMaxLengthForEditText(Landroid/widget/EditText;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v2, "displayId"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Id from getContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v0, "getDisplay is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
