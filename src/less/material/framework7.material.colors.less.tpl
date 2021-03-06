@import url('_mixins.less');
@import url('_colors-vars.less');
/*==========================
Framework7 Layouts Themes
==========================*/
/* === Dark layout === */
.layout-dark {
    @pageBg: #222;
    @barsBg: #131313;
    @barsBorder: #333;
    @barsText: #fff;
    @tabBarText: #fff;
    @text: #ddd;
    @lightText: #bbb;
    @strongText: #fff;
    @activeLink: rgba(255,255,255,0.05);
    @blockBg: #1c1c1c;
    @blockBorder: #393939;
    @blockStrongBg: #1c1c1c;
    @dividerBg: #1a1a1a;
    @itemAfterText: @lightText;
    @searchbarBg: #333;
    @searchbarBorder: #333;
    @swipeoutButton: #444;
    @checkboxBorder: @blockBorder;

    // Photo Browser
    .page, .login-screen-content, .page&, .panel, .panel& {
        background-color: @pageBg;
        color:rgba(255,255,255,0.87);
    }
    // Content Block
    .content-block-title {
        color:rgba(255,255,255,0.87);
    }

    .content-block-inner {
        .hairline-color(top, @blockBorder);
        .hairline-color(bottom, @blockBorder);
    }
    // Popover
    .popover .list-block ul {
        background: none;
    }
    // Card
    .card {
        background: @blockBg;
    }
    .card-header{
        .hairline-color(bottom, @blockBorder);
    }
    .card-footer {
        .hairline-color(top, @blockBorder);
        color:@lightText;
    }
    // List
    .list-block, .list-block& {
        ul {
            .hairline-color(top, @blockBorder);
            .hairline-color(bottom, @blockBorder);
        }
        &.inset ul{
            background: @blockStrongBg;
        }
        &.notifications > ul {
            background: none;
        }
    }
    li.sorting {
        background-color: rgba(34,34,34,0.8);
    }
    .swipeout-actions-left a, .swipeout-actions-right a {
        background-color: @swipeoutButton;
    }
    .item-inner, .list-block ul ul li:last-child .item-inner {
        .hairline-color(bottom, @blockBorder);
    }
    .item-after, .item-text {
        color: rgba(255,255,255,0.7);
    }
    .list-block-label {
        color:@lightText;
    }
    .item-divider, .list-group-title {
        background: @dividerBg;
        color:@lightText;
        .hairline-color(top, @blockBorder);
    }
    .contacts-block .list-group-title {
        background: none;
    }
    .autocomplete-dropdown  {
        background: @blockBg;
        .list-block {
            color: rgba(255,255,255,0.54);
        }
        .list-block b {
            color: rgba(255,255,255,0.87);
        }
    }
    // Forms
    .item-link, label.label-checkbox, label.label-radio {
        html:not(.watch-active-state) &:active, &.active-state {
            background-color: @activeLink;
        }
    }
    .list-block {
        input[type="text"], input[type="password"], input[type="search"], input[type="email"], input[type="tel"], input[type="url"], input[type="date"], input[type="datetime-local"], input[type="time"], input[type="number"], select, textarea {
            color:@strongText;
            &::-webkit-input-placeholder {
                color: rgba(255,255,255,0.35);
            }
        }
    }
    .label-switch {
        .checkbox {
            background: rgba(255,255,255,0.3);
        }
    }
    .item-inner:not(.focus-state) .label, .item-inner:not(.focus-state) .floating-label {
        color: rgba(255,255,255,0.7);
    }
    .item-inner:not(.focus-state):not(.not-empty-state) .item-input-field, .item-inner:not(.focus-state):not(.not-empty-state) .input-field {
        .hairline-color(bottom, rgba(255, 255, 255, 0.12));
    }

    label.label-checkbox {
        i.icon-form-checkbox {
            border-color: rgba(255,255,255,0.7);
        }
    }
    label.label-radio {
        i.icon-form-radio {
            border-color: rgba(255,255,255,0.7);
        }
    }
    .item-link.list-button {
        .hairline-color(bottom, @blockBorder);
    }
    .page-content .ripple-wave {
        background:rgba(255,255,255,0.3);
    }
    .button:not(.button-fill) {
        html:not(.watch-active-state) &:active, &.active-state {
            background:rgba(255,255,255,0.1);
        }
    }
    // Chips
    .chip {
        background: rgba(255,255,255,0.87);
    }
}

/*==========================
Framework7 Color Themes
==========================*/
.theme-mixin(@colorName, @color, @pressColor) {
    ///ggg
    .layout-bg-@{colorName} {
        background-color: #fff
    }

    //Plain color and links
    .color-@{colorName} {
        color: @color;
        .list-block .item-link.list-button&, .list-block .item-link&, .tabbar a.active&, a& {
            color: @color;
        }
        .label-switch input[type="checkbox"]:checked + .checkbox&, .label-switch& input[type="checkbox"]:checked + .checkbox{
            background-color: @color;
        }
    }
    //Buttons
    .button {
        .theme-@{colorName} & {
            &:not(.button-fill) {
                color:@color;
            }
        }
        .theme-@{colorName} .navbar &, .theme-@{colorName}.navbar &, .theme-@{colorName} .toolbar &, .theme-@{colorName}.toolbar &, .theme-@{colorName} .subnavbar &, .theme-@{colorName}.subnavbar & {
            &:not(.button-fill) {
                color:#fff;
            }
        }
        &.color-@{colorName}:not(.button-fill), .color-@{colorName}.buttons-row &:not(.button-fill) {
            color: @color !important;
        }
        .theme-@{colorName} &.button-fill {
            background: @color;
            color:#fff;
            html:not(.watch-active-state) &:active, &.active-state {
                background: @pressColor;
            }
        }
        &.button-fill.bg-@{colorName}, &.button-fill.color-@{colorName} {
            background: @color !important;
            color:#fff;
            html:not(.watch-active-state) &:active, &.active-state {
                background: @pressColor !important;
            }
        }

    }
    // Progress bar
    .progressbar {
        &.color-@{colorName}, &.theme-@{colorName}, .theme-@{colorName} &, &.bg-@{colorName} {
            background-color: rgba(red(@color), green(@color), blue(@color), 0.5);
            span {
                background-color: @color;
            }
        }
    }
    .progressbar-infinite{
        &.color-@{colorName}, &.theme-@{colorName}, .theme-@{colorName} &, &.bg-@{colorName} {
            background-color: rgba(red(@color), green(@color), blue(@color), 0.5);
            &:after, &:before {
                background-color: @color;
            }
        }
    }
    //Icons
    .color-@{colorName} {
        i.icon, i.icon& {
            color:@color;
        }
    }
    i.icon-next.color-@{colorName}, i.icon-next.theme-@{colorName} {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' fill='@{color}' width='24' height='24' viewBox='0 0 24 24'><path d='M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z'/><path d='M0 0h24v24H0z' fill='none'/></svg>");
    }
    i.icon-prev.color-@{colorName}, i.icon-prev.theme-@{colorName} {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' fill='@{color}' width='24' height='24' viewBox='0 0 24 24'><path d='M15.41 7.41L14 6l-6 6 6 6 1.41-1.41L10.83 12z'/><path d='M0 0h24v24H0z' fill='none'/></svg>");
    }
    i.icon-back.color-@{colorName}, i.icon-back.theme-@{colorName} {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'><path d='M20 11H7.83l5.59-5.59L12 4l-8 8 8 8 1.41-1.41L7.83 13H20v-2z' fill='@{color}'/></svg>");
    }
    i.icon-forward.color-@{colorName}, i.icon-forward.theme-@{colorName} {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'><path d='M12 4l-1.41 1.41L16.17 11H4v2h12.17l-5.58 5.59L12 20l8-8z' fill='@{color}'/></svg>");
    }
    i.icon-bars.color-@{colorName}, i.icon-bars.theme-@{colorName} {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'><path d='M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z' fill='@{color}'/></svg>");
    }
    // Preloader
    .preloader.color-@{colorName}, .preloader.preloader-@{colorName} {
        svg circle {
            stroke: @color;
        }
        .preloader-inner-gap, .preloader-inner-half-circle {
            border-color: @color;
        }
    }
    // Theme
    .theme-@{colorName} {
        // Links
        a {
            color: @color;
        }
        // Toolbars
        .navbar, .navbar& , .toolbar, .toolbar&, .subnavbar, .subnavbar&, .searchbar, .searchbar&{
            background-color: @color;
        }
        // Forms
        .range-slider, .range-slider& {
            input[type="range"]::-webkit-slider-thumb:before {
                background-color: @color;
            }
            input[type="range"]::-webkit-slider-thumb {
                background-color: @color;
            }
            input[type="range"]::-ms-thumb {
                background-color: @color;
            }
            input[type="range"]::-ms-fill-lower {
                background-color: @color;
            }
            input[type="range"]::-moz-range-thumb {
                background-color: @color;
            }
        }
        .label-switch, .label-switch& {
            input[type="checkbox"] {
                &:checked {
                    &+ .checkbox {
                        background-color: rgba(red(@color), green(@color), blue(@color), 0.5);
                        &:after {
                            background-color: @color;
                        }
                    }
                }
            }
        }
        label.label-checkbox, label.label-checkbox& {
            cursor: pointer;
            i.icon-form-checkbox {
                &:after {
                    .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' fill='#ffffff' width='24' height='24' viewBox='0 0 24 24'><path d='M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z'/></svg>");
                }
            }
            input[type="checkbox"], input[type="radio"] {
                &:checked + .item-media, &:checked ~ .item-after, &:checked ~ .item-inner{
                    i.icon-form-checkbox {
                        border-color: @color;
                        background-color: @color;
                    }
                }
            }
        }
        label.label-radio, label.label-radio& {
            i.icon-form-radio:after {
                background-color: @color;
            }
            input[type="checkbox"], input[type="radio"] {
                &:checked + .item-media, &:checked ~ .item-after, &:checked ~ .item-inner{
                    i.icon-form-radio {
                        border-color: @color;
                    }
                    i.icon-form-radio:after {
                        background-color: @color;
                    }
                }
            }
        }
        .focus-state {
            .label, .floating-label {
                color: @color;
            }
        }
        .item-input-field, .input-field {
            &.focus-state:after, &.not-empty-state:after {
                background: @color;
            }
        }
        // Calendar

        .picker-calendar-day.picker-calendar-day-today span {
            color: @color;
        }
        .picker-calendar-day.picker-calendar-day-selected span {
            background-color: @color;
            color:#fff;
        }
        .picker-calendar-day.picker-calendar-day-has-events span:after {
            background-color: @color;
        }
        // Picker Header
        .picker-header {
            background-color: @color;
        }
        // Modal buttons
        .modal-button {
            color: @color;
        }
    }
    .swiper-pagination {
        &.color-@{colorName}, .theme-@{colorName} & {
            .swiper-pagination-bullet-active {
                background-color: @color;
            }
            .swiper-pagination-progressbar {
                background-color: @color;
            }
        }
        &.swiper-pagination-progress.bg-@{colorName} {
            background-color: rgba(red(@color), green(@color), blue(@color), 0.25);
        }
    }
    .swiper-button-next, .swiper-container-rtl .swiper-button-prev {
        &.color-@{colorName}, .theme-@{colorName} & {
            .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'><path d='M27,22L27,22L5,44l-2.1-2.1L22.8,22L2.9,2.1L5,0L27,22L27,22z' fill='@{color}'/></svg>");
        }
    }
    .swiper-button-prev, .swiper-container-rtl .swiper-button-next {
        &.color-@{colorName}, .theme-@{colorName} & {
            .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'><path d='M0,22L22,0l2.1,2.1L4.2,22l19.9,19.9L22,44L0,22L0,22L0,22z' fill='@{color}'/></svg>");
        }
    }
    // Bg rule
    .bg-@{colorName}, a.bg-@{colorName}, .list-block .swipeout-actions-left a.bg-@{colorName}, .list-block .swipeout-actions-right a.bg-@{colorName} {
        background-color: @color;
        .list-block & .item-link, .list-block& .item-link, .list-block .item-link& {
            html:not(.watch-active-state) &:active, &.active-state {
                background: @pressColor;
            }
        }
    }
    // Border rule
    .border-@{colorName} {
        border-color: @color;
        .list-block &.item-inner, .list-block ul&, & {
            &:after, &:before {
                background-color: @color;
            }
        }
    }
    // Floating Button
    .floating-button, .speed-dial-buttons a {
        .theme-@{colorName} &, &.theme-@{colorName}, &.color-@{colorName}, &.bg-@{colorName} {
            color:#fff;
            background: @color;
            html:not(.watch-active-state) &:active, &.active-state {
                background: @pressColor;
            }
            i {
                color: inherit;
            }
        }
    }
    // Ripple
    .ripple-@{colorName} {
        .ripple-wave {
            background-color: rgba(red(@color), green(@color), blue(@color), 0.3);
        }
    }
    //Badges
    .badge.color-@{colorName}, .badge.theme-@{colorName} {
    	background-color:@color;
    	color: #fff;
    }
}
.theme-mixin(e('lrcustom'), @lrcustom, {{- THEME_PRESS_COLOR }});
.theme-mixin(e('red'), @red, #D32F2F);
.theme-mixin(e('pink'), @pink, #C2185B);
.theme-mixin(e('purple'), @purple, #7B1FA2);
.theme-mixin(e('deeppurple'), @deeppurple, #512DA8);
.theme-mixin(e('indigo'), @indigo, #303F9F);
.theme-mixin(e('blue'), @blue, #1976D2);
.theme-mixin(e('lightblue'), @lightblue, #0288D1);
.theme-mixin(e('cyan'), @cyan, #0097A7);
.theme-mixin(e('teal'), @teal, #00897B);
.theme-mixin(e('green'), @green, #388E3C);
.theme-mixin(e('lightgreen'), @lightgreen, #689F38);
.theme-mixin(e('lime'), @lime, #AFB42B);
.theme-mixin(e('yellow'), @yellow, #FBC02D);
.theme-mixin(e('amber'), @amber, #FFA000);
.theme-mixin(e('orange'), @orange, #F57C00);
.theme-mixin(e('deeporange'), @deeporange, #E64A19);
.theme-mixin(e('brown'), @brown, #5D4037);
.theme-mixin(e('gray'), @gray, #616161);
.theme-mixin(e('bluegray'), @bluegray, #455A64);
.theme-mixin(e('white'), @white, rgba(0,0,0,0.1));
.theme-mixin(e('black'), @black, #333);
